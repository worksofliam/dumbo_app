**free

ctl-opt dftactgrp(*no);

dcl-pi P5578;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2742.rpgleinc'
/copy 'qrpgleref/P2724.rpgleinc'
/copy 'qrpgleref/P4888.rpgleinc'

dcl-ds T1056 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1056 FROM T1056 LIMIT 1;

theCharVar = 'Hello from P5578';
dsply theCharVar;
P2742();
P2724();
P4888();
return;