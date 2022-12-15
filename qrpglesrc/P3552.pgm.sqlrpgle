**free

ctl-opt dftactgrp(*no);

dcl-pi P3552;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1372.rpgleinc'
/copy 'qrpgleref/P2475.rpgleinc'
/copy 'qrpgleref/P497.rpgleinc'

dcl-ds T342 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T342 FROM T342 LIMIT 1;

theCharVar = 'Hello from P3552';
dsply theCharVar;
P1372();
P2475();
P497();
return;