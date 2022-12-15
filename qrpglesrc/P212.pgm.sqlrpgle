**free

ctl-opt dftactgrp(*no);

dcl-pi P212;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P112.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'

dcl-ds T325 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T325 FROM T325 LIMIT 1;

theCharVar = 'Hello from P212';
dsply theCharVar;
P112();
P13();
P34();
return;