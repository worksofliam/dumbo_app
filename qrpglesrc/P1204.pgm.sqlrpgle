**free

ctl-opt dftactgrp(*no);

dcl-pi P1204;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P741.rpgleinc'
/copy 'qrpgleref/P921.rpgleinc'
/copy 'qrpgleref/P969.rpgleinc'

dcl-ds T605 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T605 FROM T605 LIMIT 1;

theCharVar = 'Hello from P1204';
dsply theCharVar;
P741();
P921();
P969();
return;