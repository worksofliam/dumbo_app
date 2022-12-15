**free

ctl-opt dftactgrp(*no);

dcl-pi P3820;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P1323.rpgleinc'
/copy 'qrpgleref/P1887.rpgleinc'

dcl-ds theTable extname('T567') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T567 LIMIT 1;

theCharVar = 'Hello from P3820';
dsply theCharVar;
P58();
P1323();
P1887();
return;