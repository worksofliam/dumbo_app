**free

ctl-opt dftactgrp(*no);

dcl-pi P82;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'

dcl-ds theTable extname('T786') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T786 LIMIT 1;

theCharVar = 'Hello from P82';
dsply theCharVar;
P46();
P21();
P19();
return;