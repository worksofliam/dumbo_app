**free

ctl-opt dftactgrp(*no);

dcl-pi P1197;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1068.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'

dcl-ds T1616 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1616 FROM T1616 LIMIT 1;

theCharVar = 'Hello from P1197';
dsply theCharVar;
P1068();
P26();
P73();
return;