**free

ctl-opt dftactgrp(*no);

dcl-pi P2052;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P397.rpgleinc'
/copy 'qrpgleref/P1003.rpgleinc'
/copy 'qrpgleref/P934.rpgleinc'

dcl-ds T276 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T276 FROM T276 LIMIT 1;

theCharVar = 'Hello from P2052';
dsply theCharVar;
P397();
P1003();
P934();
return;