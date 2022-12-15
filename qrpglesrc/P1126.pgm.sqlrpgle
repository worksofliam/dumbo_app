**free

ctl-opt dftactgrp(*no);

dcl-pi P1126;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P902.rpgleinc'
/copy 'qrpgleref/P614.rpgleinc'
/copy 'qrpgleref/P449.rpgleinc'

dcl-ds T117 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T117 FROM T117 LIMIT 1;

theCharVar = 'Hello from P1126';
dsply theCharVar;
P902();
P614();
P449();
return;