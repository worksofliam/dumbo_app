**free

ctl-opt dftactgrp(*no);

dcl-pi P175;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P104.rpgleinc'
/copy 'qrpgleref/P107.rpgleinc'

dcl-ds T1016 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1016 FROM T1016 LIMIT 1;

theCharVar = 'Hello from P175';
dsply theCharVar;
P34();
P104();
P107();
return;