**free

ctl-opt dftactgrp(*no);

dcl-pi P554;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P159.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P112.rpgleinc'

dcl-ds T1085 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1085 FROM T1085 LIMIT 1;

theCharVar = 'Hello from P554';
dsply theCharVar;
P159();
P14();
P112();
return;