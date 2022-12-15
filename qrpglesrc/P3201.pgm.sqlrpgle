**free

ctl-opt dftactgrp(*no);

dcl-pi P3201;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P694.rpgleinc'
/copy 'qrpgleref/P1862.rpgleinc'
/copy 'qrpgleref/P2003.rpgleinc'

dcl-ds theTable extname('T555') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T555 LIMIT 1;

theCharVar = 'Hello from P3201';
dsply theCharVar;
P694();
P1862();
P2003();
return;