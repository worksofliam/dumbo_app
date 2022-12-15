**free

ctl-opt dftactgrp(*no);

dcl-pi P1646;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P575.rpgleinc'
/copy 'qrpgleref/P1633.rpgleinc'
/copy 'qrpgleref/P745.rpgleinc'

dcl-ds theTable extname('T1430') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1430 LIMIT 1;

theCharVar = 'Hello from P1646';
dsply theCharVar;
P575();
P1633();
P745();
return;