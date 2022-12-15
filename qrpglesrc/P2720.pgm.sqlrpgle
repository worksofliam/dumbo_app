**free

ctl-opt dftactgrp(*no);

dcl-pi P2720;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2123.rpgleinc'
/copy 'qrpgleref/P740.rpgleinc'
/copy 'qrpgleref/P709.rpgleinc'

dcl-ds T233 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T233 FROM T233 LIMIT 1;

theCharVar = 'Hello from P2720';
dsply theCharVar;
P2123();
P740();
P709();
return;