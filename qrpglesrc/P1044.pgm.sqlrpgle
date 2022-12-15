**free

ctl-opt dftactgrp(*no);

dcl-pi P1044;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P946.rpgleinc'
/copy 'qrpgleref/P876.rpgleinc'
/copy 'qrpgleref/P578.rpgleinc'

dcl-ds T830 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T830 FROM T830 LIMIT 1;

theCharVar = 'Hello from P1044';
dsply theCharVar;
P946();
P876();
P578();
return;