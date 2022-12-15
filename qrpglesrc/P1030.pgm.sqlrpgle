**free

ctl-opt dftactgrp(*no);

dcl-pi P1030;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P275.rpgleinc'
/copy 'qrpgleref/P890.rpgleinc'
/copy 'qrpgleref/P624.rpgleinc'

dcl-ds T811 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T811 FROM T811 LIMIT 1;

theCharVar = 'Hello from P1030';
dsply theCharVar;
P275();
P890();
P624();
return;