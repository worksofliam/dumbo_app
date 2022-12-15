**free

ctl-opt dftactgrp(*no);

dcl-pi P4719;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P501.rpgleinc'
/copy 'qrpgleref/P1103.rpgleinc'
/copy 'qrpgleref/P3931.rpgleinc'

dcl-ds theTable extname('T144') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T144 LIMIT 1;

theCharVar = 'Hello from P4719';
dsply theCharVar;
P501();
P1103();
P3931();
return;