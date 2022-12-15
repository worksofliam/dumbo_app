**free

ctl-opt dftactgrp(*no);

dcl-pi P1003;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P805.rpgleinc'
/copy 'qrpgleref/P647.rpgleinc'
/copy 'qrpgleref/P869.rpgleinc'

dcl-ds theTable extname('T949') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T949 LIMIT 1;

theCharVar = 'Hello from P1003';
dsply theCharVar;
P805();
P647();
P869();
return;