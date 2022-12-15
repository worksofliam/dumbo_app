**free

ctl-opt dftactgrp(*no);

dcl-pi P1357;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P480.rpgleinc'
/copy 'qrpgleref/P259.rpgleinc'
/copy 'qrpgleref/P261.rpgleinc'

dcl-ds T1035 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1035 FROM T1035 LIMIT 1;

theCharVar = 'Hello from P1357';
dsply theCharVar;
P480();
P259();
P261();
return;