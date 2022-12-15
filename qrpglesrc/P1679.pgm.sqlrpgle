**free

ctl-opt dftactgrp(*no);

dcl-pi P1679;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P850.rpgleinc'
/copy 'qrpgleref/P1664.rpgleinc'
/copy 'qrpgleref/P350.rpgleinc'

dcl-ds T616 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T616 FROM T616 LIMIT 1;

theCharVar = 'Hello from P1679';
dsply theCharVar;
P850();
P1664();
P350();
return;