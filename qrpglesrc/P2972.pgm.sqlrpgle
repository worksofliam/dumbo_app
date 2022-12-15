**free

ctl-opt dftactgrp(*no);

dcl-pi P2972;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P828.rpgleinc'
/copy 'qrpgleref/P2154.rpgleinc'
/copy 'qrpgleref/P2686.rpgleinc'

dcl-ds T397 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T397 FROM T397 LIMIT 1;

theCharVar = 'Hello from P2972';
dsply theCharVar;
P828();
P2154();
P2686();
return;