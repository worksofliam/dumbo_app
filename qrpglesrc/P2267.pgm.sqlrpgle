**free

ctl-opt dftactgrp(*no);

dcl-pi P2267;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P213.rpgleinc'
/copy 'qrpgleref/P196.rpgleinc'
/copy 'qrpgleref/P524.rpgleinc'

dcl-ds T654 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T654 FROM T654 LIMIT 1;

theCharVar = 'Hello from P2267';
dsply theCharVar;
P213();
P196();
P524();
return;