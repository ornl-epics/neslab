<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<databrowser>
    <title></title>
    <save_changes>true</save_changes>
    <show_legend>false</show_legend>
    <show_toolbar>true</show_toolbar>
    <grid>false</grid>
    <scroll>true</scroll>
    <update_period>3.0</update_period>
    <scroll_step>5</scroll_step>
    <start>-2 hours 0.0 seconds</start>
    <end>now</end>
    <archive_rescale>STAGGER</archive_rescale>
    <background>
        <red>255</red>
        <green>255</green>
        <blue>255</blue>
    </background>
    <title_font>Sans|15|1</title_font>
    <label_font>Sans|10|1</label_font>
    <scale_font>Sans|9|0</scale_font>
    <legend_font>Sans|9|0</legend_font>
    <axes>
        <axis>
            <visible>true</visible>
            <name>Temp (C)</name>
            <use_axis_name>true</use_axis_name>
            <use_trace_names>true</use_trace_names>
            <right>false</right>
            <color>
                <red>0</red>
                <green>0</green>
                <blue>0</blue>
            </color>
            <label_font>|10|0</label_font>
            <scale_font>|10|0</scale_font>
            <min>-78.0</min>
            <max>849.0</max>
            <grid>false</grid>
            <autoscale>false</autoscale>
            <log_scale>false</log_scale>
        </axis>
    </axes>
    <annotations>
    </annotations>
    <pvlist>
        <pv>
            <display_name>BL1B:SE:NESL:1CP_Temp</display_name>
            <visible>true</visible>
            <name>BL1B:SE:NESL:1CP_Temp</name>
            <axis>0</axis>
            <color>
                <red>0</red>
                <green>255</green>
                <blue>0</blue>
            </color>
            <trace_type>AREA</trace_type>
            <linewidth>2</linewidth>
            <point_type>NONE</point_type>
            <point_size>2</point_size>
            <waveform_index>0</waveform_index>
            <period>0.0</period>
            <ring_size>5000</ring_size>
            <request>OPTIMIZED</request>
            <archive>
                <name>Instrument</name>
                <url>jdbc:oracle:thin:@snsoroda-scan.sns.gov:1521/scprod_controls</url>
                <key>1</key>
            </archive>
        </pv>
        <pv>
            <display_name>BL1B:SE:NESL:2CP_Ratio</display_name>
            <visible>true</visible>
            <name>BL1B:SE:NESL:2CP_Ratio</name>
            <axis>0</axis>
            <color>
                <red>255</red>
                <green>0</green>
                <blue>0</blue>
            </color>
            <trace_type>AREA</trace_type>
            <linewidth>2</linewidth>
            <point_type>NONE</point_type>
            <point_size>2</point_size>
            <waveform_index>0</waveform_index>
            <period>0.0</period>
            <ring_size>5000</ring_size>
            <request>OPTIMIZED</request>
            <archive>
                <name>Instrument</name>
                <url>jdbc:oracle:thin:@snsoroda-scan.sns.gov:1521/scprod_controls</url>
                <key>1</key>
            </archive>
        </pv>
    </pvlist>
</databrowser>