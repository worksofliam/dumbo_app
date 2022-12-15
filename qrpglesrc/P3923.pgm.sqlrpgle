**free

ctl-opt dftactgrp(*no);

dcl-pi P3923;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2549.rpgleinc'
/copy 'qrpgleref/P114.rpgleinc'
/copy 'qrpgleref/P144.rpgleinc'

dcl-ds T1470 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1470 FROM T1470 LIMIT 1;

theCharVar = 'Hello from P3923';
dsply theCharVar;
P2549();
P114();
P144();
return;