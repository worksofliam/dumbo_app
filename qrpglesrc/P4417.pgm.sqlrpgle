**free

ctl-opt dftactgrp(*no);

dcl-pi P4417;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3650.rpgleinc'
/copy 'qrpgleref/P3287.rpgleinc'
/copy 'qrpgleref/P1793.rpgleinc'

dcl-ds theTable extname('T1061') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1061 LIMIT 1;

theCharVar = 'Hello from P4417';
dsply theCharVar;
P3650();
P3287();
P1793();
return;