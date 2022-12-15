**free

ctl-opt dftactgrp(*no);

dcl-pi P5432;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2874.rpgleinc'
/copy 'qrpgleref/P5305.rpgleinc'
/copy 'qrpgleref/P2656.rpgleinc'

dcl-ds T1152 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1152 FROM T1152 LIMIT 1;

theCharVar = 'Hello from P5432';
dsply theCharVar;
P2874();
P5305();
P2656();
return;