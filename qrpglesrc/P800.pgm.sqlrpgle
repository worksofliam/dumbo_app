**free

ctl-opt dftactgrp(*no);

dcl-pi P800;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P669.rpgleinc'
/copy 'qrpgleref/P200.rpgleinc'
/copy 'qrpgleref/P85.rpgleinc'

dcl-ds T145 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T145 FROM T145 LIMIT 1;

theCharVar = 'Hello from P800';
dsply theCharVar;
P669();
P200();
P85();
return;