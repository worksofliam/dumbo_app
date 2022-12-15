**free

ctl-opt dftactgrp(*no);

dcl-pi P5290;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3054.rpgleinc'
/copy 'qrpgleref/P5132.rpgleinc'
/copy 'qrpgleref/P4487.rpgleinc'

dcl-ds T205 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T205 FROM T205 LIMIT 1;

theCharVar = 'Hello from P5290';
dsply theCharVar;
P3054();
P5132();
P4487();
return;