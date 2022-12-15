**free

ctl-opt dftactgrp(*no);

dcl-pi P3426;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2688.rpgleinc'
/copy 'qrpgleref/P3099.rpgleinc'
/copy 'qrpgleref/P570.rpgleinc'

dcl-ds T662 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T662 FROM T662 LIMIT 1;

theCharVar = 'Hello from P3426';
dsply theCharVar;
P2688();
P3099();
P570();
return;