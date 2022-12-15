**free

ctl-opt dftactgrp(*no);

dcl-pi P93;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P78.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'

dcl-ds theTable extname('T70') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T70 LIMIT 1;

theCharVar = 'Hello from P93';
dsply theCharVar;
P54();
P78();
P35();
return;