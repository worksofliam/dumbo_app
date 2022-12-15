**free

ctl-opt dftactgrp(*no);

dcl-pi P1373;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1102.rpgleinc'
/copy 'qrpgleref/P798.rpgleinc'
/copy 'qrpgleref/P369.rpgleinc'

dcl-ds theTable extname('T1229') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1229 LIMIT 1;

theCharVar = 'Hello from P1373';
dsply theCharVar;
P1102();
P798();
P369();
return;