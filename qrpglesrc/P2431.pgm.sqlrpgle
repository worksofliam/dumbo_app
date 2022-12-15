**free

ctl-opt dftactgrp(*no);

dcl-pi P2431;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1005.rpgleinc'
/copy 'qrpgleref/P2080.rpgleinc'
/copy 'qrpgleref/P565.rpgleinc'

dcl-ds T1247 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1247 FROM T1247 LIMIT 1;

theCharVar = 'Hello from P2431';
dsply theCharVar;
P1005();
P2080();
P565();
return;