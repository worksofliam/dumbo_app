**free

ctl-opt dftactgrp(*no);

dcl-pi P2899;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1763.rpgleinc'
/copy 'qrpgleref/P2052.rpgleinc'
/copy 'qrpgleref/P299.rpgleinc'

dcl-ds T961 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T961 FROM T961 LIMIT 1;

theCharVar = 'Hello from P2899';
dsply theCharVar;
P1763();
P2052();
P299();
return;