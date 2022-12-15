**free

ctl-opt dftactgrp(*no);

dcl-pi P3193;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P185.rpgleinc'
/copy 'qrpgleref/P622.rpgleinc'
/copy 'qrpgleref/P995.rpgleinc'

dcl-ds theTable extname('T335') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T335 LIMIT 1;

theCharVar = 'Hello from P3193';
dsply theCharVar;
P185();
P622();
P995();
return;