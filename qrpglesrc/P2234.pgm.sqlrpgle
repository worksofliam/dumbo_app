**free

ctl-opt dftactgrp(*no);

dcl-pi P2234;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1329.rpgleinc'
/copy 'qrpgleref/P1810.rpgleinc'
/copy 'qrpgleref/P637.rpgleinc'

dcl-ds T625 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T625 FROM T625 LIMIT 1;

theCharVar = 'Hello from P2234';
dsply theCharVar;
P1329();
P1810();
P637();
return;