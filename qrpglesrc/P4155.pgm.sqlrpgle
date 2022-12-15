**free

ctl-opt dftactgrp(*no);

dcl-pi P4155;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3188.rpgleinc'
/copy 'qrpgleref/P1158.rpgleinc'
/copy 'qrpgleref/P855.rpgleinc'

dcl-ds T726 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T726 FROM T726 LIMIT 1;

theCharVar = 'Hello from P4155';
dsply theCharVar;
P3188();
P1158();
P855();
return;