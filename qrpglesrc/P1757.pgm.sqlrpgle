**free

ctl-opt dftactgrp(*no);

dcl-pi P1757;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P944.rpgleinc'
/copy 'qrpgleref/P1692.rpgleinc'
/copy 'qrpgleref/P338.rpgleinc'

dcl-ds T345 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T345 FROM T345 LIMIT 1;

theCharVar = 'Hello from P1757';
dsply theCharVar;
P944();
P1692();
P338();
return;