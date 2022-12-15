**free

ctl-opt dftactgrp(*no);

dcl-pi P344;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P219.rpgleinc'
/copy 'qrpgleref/P207.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'

dcl-ds theTable extname('T998') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T998 LIMIT 1;

theCharVar = 'Hello from P344';
dsply theCharVar;
P219();
P207();
P181();
return;