**free

ctl-opt dftactgrp(*no);

dcl-pi P2120;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1985.rpgleinc'
/copy 'qrpgleref/P70.rpgleinc'
/copy 'qrpgleref/P737.rpgleinc'

dcl-ds T473 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T473 FROM T473 LIMIT 1;

theCharVar = 'Hello from P2120';
dsply theCharVar;
P1985();
P70();
P737();
return;