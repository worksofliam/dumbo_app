**free

ctl-opt dftactgrp(*no);

dcl-pi P1982;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P299.rpgleinc'
/copy 'qrpgleref/P416.rpgleinc'
/copy 'qrpgleref/P542.rpgleinc'

dcl-ds theTable extname('T1020') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1020 LIMIT 1;

theCharVar = 'Hello from P1982';
dsply theCharVar;
P299();
P416();
P542();
return;