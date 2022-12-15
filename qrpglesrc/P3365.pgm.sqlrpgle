**free

ctl-opt dftactgrp(*no);

dcl-pi P3365;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1991.rpgleinc'
/copy 'qrpgleref/P1238.rpgleinc'
/copy 'qrpgleref/P1745.rpgleinc'

dcl-ds theTable extname('T1041') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1041 LIMIT 1;

theCharVar = 'Hello from P3365';
dsply theCharVar;
P1991();
P1238();
P1745();
return;