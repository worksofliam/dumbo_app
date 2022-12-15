**free

ctl-opt dftactgrp(*no);

dcl-pi P2185;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1041.rpgleinc'
/copy 'qrpgleref/P270.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'

dcl-ds T294 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T294 FROM T294 LIMIT 1;

theCharVar = 'Hello from P2185';
dsply theCharVar;
P1041();
P270();
P25();
return;