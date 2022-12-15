**free

ctl-opt dftactgrp(*no);

dcl-pi P1181;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P480.rpgleinc'
/copy 'qrpgleref/P424.rpgleinc'
/copy 'qrpgleref/P314.rpgleinc'

dcl-ds theTable extname('T117') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T117 LIMIT 1;

theCharVar = 'Hello from P1181';
dsply theCharVar;
P480();
P424();
P314();
return;