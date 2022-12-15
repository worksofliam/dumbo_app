**free

ctl-opt dftactgrp(*no);

dcl-pi P1536;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1307.rpgleinc'
/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P1102.rpgleinc'

dcl-ds T1819 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1819 FROM T1819 LIMIT 1;

theCharVar = 'Hello from P1536';
dsply theCharVar;
P1307();
P82();
P1102();
return;