**free

ctl-opt dftactgrp(*no);

dcl-pi P3559;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2165.rpgleinc'
/copy 'qrpgleref/P999.rpgleinc'
/copy 'qrpgleref/P345.rpgleinc'

dcl-ds T935 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T935 FROM T935 LIMIT 1;

theCharVar = 'Hello from P3559';
dsply theCharVar;
P2165();
P999();
P345();
return;