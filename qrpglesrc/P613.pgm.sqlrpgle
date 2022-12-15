**free

ctl-opt dftactgrp(*no);

dcl-pi P613;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P110.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P462.rpgleinc'

dcl-ds T388 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T388 FROM T388 LIMIT 1;

theCharVar = 'Hello from P613';
dsply theCharVar;
P110();
P30();
P462();
return;