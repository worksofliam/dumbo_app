**free

ctl-opt dftactgrp(*no);

dcl-pi P258;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P202.rpgleinc'
/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'

dcl-ds T191 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T191 FROM T191 LIMIT 1;

theCharVar = 'Hello from P258';
dsply theCharVar;
P202();
P177();
P58();
return;