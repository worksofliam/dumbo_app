**free

ctl-opt dftactgrp(*no);

dcl-pi P4218;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P778.rpgleinc'
/copy 'qrpgleref/P2357.rpgleinc'
/copy 'qrpgleref/P538.rpgleinc'

dcl-ds T1382 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1382 FROM T1382 LIMIT 1;

theCharVar = 'Hello from P4218';
dsply theCharVar;
P778();
P2357();
P538();
return;