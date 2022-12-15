**free

ctl-opt dftactgrp(*no);

dcl-pi P4873;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3058.rpgleinc'
/copy 'qrpgleref/P2824.rpgleinc'
/copy 'qrpgleref/P3995.rpgleinc'

dcl-ds T995 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T995 FROM T995 LIMIT 1;

theCharVar = 'Hello from P4873';
dsply theCharVar;
P3058();
P2824();
P3995();
return;