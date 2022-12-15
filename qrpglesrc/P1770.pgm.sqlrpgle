**free

ctl-opt dftactgrp(*no);

dcl-pi P1770;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P948.rpgleinc'
/copy 'qrpgleref/P1082.rpgleinc'
/copy 'qrpgleref/P740.rpgleinc'

dcl-ds T850 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T850 FROM T850 LIMIT 1;

theCharVar = 'Hello from P1770';
dsply theCharVar;
P948();
P1082();
P740();
return;