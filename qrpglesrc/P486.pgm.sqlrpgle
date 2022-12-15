**free

ctl-opt dftactgrp(*no);

dcl-pi P486;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P183.rpgleinc'
/copy 'qrpgleref/P416.rpgleinc'

dcl-ds T213 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T213 FROM T213 LIMIT 1;

theCharVar = 'Hello from P486';
dsply theCharVar;
P177();
P183();
P416();
return;