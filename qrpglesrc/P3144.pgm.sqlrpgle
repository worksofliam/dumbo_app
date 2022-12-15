**free

ctl-opt dftactgrp(*no);

dcl-pi P3144;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P141.rpgleinc'
/copy 'qrpgleref/P2602.rpgleinc'
/copy 'qrpgleref/P2402.rpgleinc'

dcl-ds T961 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T961 FROM T961 LIMIT 1;

theCharVar = 'Hello from P3144';
dsply theCharVar;
P141();
P2602();
P2402();
return;