**free

ctl-opt dftactgrp(*no);

dcl-pi P3119;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2767.rpgleinc'
/copy 'qrpgleref/P2408.rpgleinc'
/copy 'qrpgleref/P2038.rpgleinc'

dcl-ds T1320 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1320 FROM T1320 LIMIT 1;

theCharVar = 'Hello from P3119';
dsply theCharVar;
P2767();
P2408();
P2038();
return;