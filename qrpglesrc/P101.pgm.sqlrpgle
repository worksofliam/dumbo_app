**free

ctl-opt dftactgrp(*no);

dcl-pi P101;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P78.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'

dcl-ds T16 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T16 FROM T16 LIMIT 1;

theCharVar = 'Hello from P101';
dsply theCharVar;
P78();
P49();
P10();
return;