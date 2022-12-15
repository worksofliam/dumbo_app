**free

ctl-opt dftactgrp(*no);

dcl-pi P3314;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2614.rpgleinc'
/copy 'qrpgleref/P1159.rpgleinc'
/copy 'qrpgleref/P3218.rpgleinc'

dcl-ds T100 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T100 FROM T100 LIMIT 1;

theCharVar = 'Hello from P3314';
dsply theCharVar;
P2614();
P1159();
P3218();
return;