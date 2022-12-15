**free

ctl-opt dftactgrp(*no);

dcl-pi P2626;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1379.rpgleinc'
/copy 'qrpgleref/P1008.rpgleinc'
/copy 'qrpgleref/P1349.rpgleinc'

dcl-ds T458 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T458 FROM T458 LIMIT 1;

theCharVar = 'Hello from P2626';
dsply theCharVar;
P1379();
P1008();
P1349();
return;