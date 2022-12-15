**free

ctl-opt dftactgrp(*no);

dcl-pi P1145;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P129.rpgleinc'
/copy 'qrpgleref/P1130.rpgleinc'
/copy 'qrpgleref/P530.rpgleinc'

dcl-ds T904 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T904 FROM T904 LIMIT 1;

theCharVar = 'Hello from P1145';
dsply theCharVar;
P129();
P1130();
P530();
return;