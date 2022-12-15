**free

ctl-opt dftactgrp(*no);

dcl-pi P840;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P449.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P289.rpgleinc'

dcl-ds T1208 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1208 FROM T1208 LIMIT 1;

theCharVar = 'Hello from P840';
dsply theCharVar;
P449();
P79();
P289();
return;