**free

ctl-opt dftactgrp(*no);

dcl-pi P2223;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2015.rpgleinc'
/copy 'qrpgleref/P2116.rpgleinc'
/copy 'qrpgleref/P2138.rpgleinc'

dcl-ds T759 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T759 FROM T759 LIMIT 1;

theCharVar = 'Hello from P2223';
dsply theCharVar;
P2015();
P2116();
P2138();
return;