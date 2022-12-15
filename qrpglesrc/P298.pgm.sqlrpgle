**free

ctl-opt dftactgrp(*no);

dcl-pi P298;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P235.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'

dcl-ds T1342 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1342 FROM T1342 LIMIT 1;

theCharVar = 'Hello from P298';
dsply theCharVar;
P235();
P69();
P4();
return;